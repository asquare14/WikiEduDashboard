require '../../testHelper'
Checkbox = require '../../../app/assets/javascripts/components/common/checkbox.cjsx'
CustomUtils = require '../../customUtils.coffee'
click = CustomUtils.click

describe 'Checkbox', ->
  TestCheckbox = ReactTestUtils.renderIntoDocument(
    <Checkbox
      value={false}
    />
  )

  it 'renders a checkbox input', ->
    checkbox = ReactTestUtils.findRenderedDOMComponentWithTag(TestCheckbox, 'p')
    expect($(checkbox).find('input[type=checkbox]').length).to.eq 1

